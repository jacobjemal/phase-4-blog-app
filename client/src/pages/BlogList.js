import { useEffect, useState } from "react";

import { Link } from "react-router-dom";
import styled from "styled-components";
import { Box, Button } from "../styles";

function BlogList() {
  const [blogs, setBlogs] = useState([]);

  // useEffect(() => {
  //   fetch("/blogs")
  //     .then((r) => r.json())
  //     .then(setBlogs);
  //   }, []);

  const request = async() => {
    let req = await fetch('/blogs')
    let res = await req.json()
      setBlogs(res)
  }

  console.log(blogs)

  useEffect(request, [])

  return (
    <Wrapper>
      {blogs.length > 0 ? (
        blogs.map((blog) => (
          <Blog key={blog.id} >
            <Box>
              <h2>{blog.title}</h2>
              <h3>{blog.content}</h3>
              <p>
                <cite>By {blog.user.username}</cite>
              </p>
            </Box>
            <Box>
              <h4>{}</h4>
            </Box>
          </Blog>
        ))
      ) : (
        <>
          <h2>No Blogs Found</h2>
          <Button as={Link} to="/new">
            Make a New Blog
          </Button>
        </>
      )}
    </Wrapper>
  );
}

const Wrapper = styled.section`
  max-width: 800px;
  margin: 40px auto;
`;

const Blog = styled.article`
  margin-bottom: 24px;
`;

export default BlogList;