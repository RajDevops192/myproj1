#using the node js image as base
FROM nodejs:14

#create a directory for the application code
WORKDIR /usr/src/app

# Copy the application code to the container
COPY . .

# install any required packages
RUN npm install

# expose the application on port 3000
EXPOSE 3000

# run the application
CMD ["node","app.js"]
